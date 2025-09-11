use std::fmt::{Display, Formatter, Result};

#[derive(Debug, PartialEq, Eq)]
pub struct Clock {
    minutes: i32,
}

impl Display for Clock {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {
        write!(f, "{:02}:{:02}", self.hours(), self.minutes())
    }
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock {
            minutes: Self::to_clock_minutes((60 * hours) + minutes),
        }
    }

    pub fn add_minutes(mut self, minutes: i32) -> Self {
        self.minutes = Self::to_clock_minutes(self.minutes + minutes);
        self
    }

    pub fn hours(&self) -> i32 {
        self.minutes / 60
    }

    pub fn minutes(&self) -> i32 {
        self.minutes % 60
    }

    pub fn to_clock_minutes(minutes: i32) -> i32 {
        (1440 + (minutes % 1440)) % 1440
    }
}
